<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     * @param  string  ...$roles
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function handle(Request $request, Closure $next, ...$roles): Response
    {
        if (!auth()->check()) {
            return redirect('login');
        }

        $user = auth()->user();
        
        // 1. Check direct role string field (case-insensitive and trimmed)
        $userRoleString = $user->role;
        if (is_string($userRoleString) && !empty($userRoleString)) {
            $userRoleString = strtolower(trim($userRoleString));
            foreach ($roles as $role) {
                if (strtolower(trim($role)) === $userRoleString) {
                    return $next($request);
                }
            }
        }

        // 2. Check relation if role is an object
        if (is_object($userRoleString) && isset($userRoleString->name)) {
            $roleName = strtolower(trim($userRoleString->name));
            foreach ($roles as $role) {
                if (strtolower(trim($role)) === $roleName) {
                    return $next($request);
                }
            }
        }

        // 3. Check roles relations (many to many)
        if ($user->relationLoaded('roles') || $user->roles()->exists()) {
            $userRoles = $user->roles->pluck('name')->map(fn($r) => strtolower(trim($r)))->toArray();
            foreach ($roles as $role) {
                if (in_array(strtolower(trim($role)), $userRoles)) {
                    return $next($request);
                }
            }
        }

        // 4. Default: Abort if not match
        abort(403, 'Unauthorized action.');
    }
}
