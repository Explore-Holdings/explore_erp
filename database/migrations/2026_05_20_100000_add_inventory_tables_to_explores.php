<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // Add inventory-specific columns to users table if not present
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'role_id')) {
                $table->unsignedBigInteger('role_id')->nullable()->after('role');
            }
            if (!Schema::hasColumn('users', 'department_id')) {
                $table->unsignedBigInteger('department_id')->nullable()->after('role_id');
            }
            if (!Schema::hasColumn('users', 'hod_id')) {
                $table->unsignedBigInteger('hod_id')->nullable()->after('department_id');
            }
        });

        // Create stocks table if not present
        if (!Schema::hasTable('stocks')) {
            Schema::create('stocks', function (Blueprint $table) {
                $table->id();
                $table->string('name');
                $table->text('description')->nullable();
                $table->integer('quantity')->default(0);
                $table->string('unit')->default('pcs');
                $table->timestamps();
            });
        }

        // Create stock_requests table if not present
        if (!Schema::hasTable('stock_requests')) {
            Schema::create('stock_requests', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('user_id');
                $table->unsignedBigInteger('department_id')->nullable();
                $table->unsignedBigInteger('stock_id');
                $table->integer('quantity');
                $table->string('status')->default('pending_hod');
                $table->string('hod_status')->default('pending_hod');
                $table->unsignedBigInteger('processed_by')->nullable();
                $table->unsignedBigInteger('hod_approved_by')->nullable();
                $table->timestamps();
            });
        }

        // Seed inventory roles if not present
        $inventoryRoles = ['Admin', 'Inventory Manager', 'HOD', 'Department User', 'Procurement'];
        foreach ($inventoryRoles as $roleName) {
            $exists = \Illuminate\Support\Facades\DB::table('roles')->where('name', $roleName)->exists();
            if (!$exists) {
                \Illuminate\Support\Facades\DB::table('roles')->insert([
                    'name' => $roleName,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('stock_requests');
        Schema::dropIfExists('stocks');

        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'hod_id')) {
                $table->dropColumn('hod_id');
            }
            if (Schema::hasColumn('users', 'department_id')) {
                $table->dropColumn('department_id');
            }
            if (Schema::hasColumn('users', 'role_id')) {
                $table->dropColumn('role_id');
            }
        });
    }
};
