<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Stock;
use App\Models\Role;
use App\Models\Department;

class InventorySeeder extends Seeder
{
    public function run(): void
    {
        // 1. Seed Stocks
        Stock::upsert([
            [
                'id' => 1,
                'name' => 'Office Ergonomic Chair',
                'sku' => 'SKU-OFF-CHR-001',
                'description' => 'Premium high-back ergonomic mesh office chair with lumbar support.',
                'quantity' => 15,
                'unit' => 'pcs',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 2,
                'name' => 'MacBook Pro M3 (16-inch)',
                'sku' => 'SKU-LAP-MAC-003',
                'description' => 'Apple MacBook Pro M3 Max, 36GB RAM, 1TB SSD Space Grey.',
                'quantity' => 5,
                'unit' => 'pcs',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 3,
                'name' => 'A4 Double A Printing Paper',
                'sku' => 'SKU-STA-PPR-009',
                'description' => 'Premium quality 80gsm A4 printing copier paper.',
                'quantity' => 8, // Low Stock (< 10)
                'unit' => 'packs',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 4,
                'name' => 'Dell 24 UltraSharp Monitor',
                'sku' => 'SKU-MON-DEL-022',
                'description' => 'Full HD IPS professional office monitor with height-adjustable stand.',
                'quantity' => 0, // Out of Stock
                'unit' => 'pcs',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'id' => 5,
                'name' => 'Wireless Keyboard & Mouse Combo',
                'sku' => 'SKU-ACC-LOG-015',
                'description' => 'Logitech MK270 wireless combo with long battery life.',
                'quantity' => 25,
                'unit' => 'sets',
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ], ['id'], ['name', 'sku', 'description', 'quantity', 'unit', 'updated_at']);

        // 2. Fetch seeded roles & departments
        $managerRole = Role::where('name', 'Inventory Manager')->first();
        $hodRole = Role::where('name', 'HOD')->first();
        $userRole = Role::where('name', 'Department User')->first();

        $itDept = Department::where('name', 'IT Department')->first();
        $procurementDept = Department::where('name', 'Procurement Department')->first();

        $managerRoleId = $managerRole ? $managerRole->id : null;
        $hodRoleId = $hodRole ? $hodRole->id : null;
        $userRoleId = $userRole ? $userRole->id : null;

        $itDeptId = $itDept ? $itDept->id : null;
        $procurementDeptId = $procurementDept ? $procurementDept->id : null;

        // 3. Seed Users
        // HOD User
        $hodUser = User::updateOrCreate(
            ['email' => 'hod@example.com'],
            [
                'name' => 'John Doe (HOD)',
                'role' => 'HOD',
                'role_id' => $hodRoleId,
                'department_id' => $itDeptId,
                'password' => bcrypt('123456789'),
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        // Link HOD role in Pivot table
        if ($hodRole) {
            $hodUser->roles()->sync([$hodRoleId]);
        }

        // Standard User (reporting to HOD)
        $deptUser = User::updateOrCreate(
            ['email' => 'user@example.com'],
            [
                'name' => 'Alice Smith',
                'role' => 'Department User',
                'role_id' => $userRoleId,
                'department_id' => $itDeptId,
                'hod_id' => $hodUser->id,
                'password' => bcrypt('123456789'),
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        // Link Department User role in Pivot table
        if ($userRole) {
            $deptUser->roles()->sync([$userRoleId]);
        }

        // Inventory Manager
        $managerUser = User::updateOrCreate(
            ['email' => 'manager@example.com'],
            [
                'name' => 'Robert Johnson (Manager)',
                'role' => 'Inventory Manager',
                'role_id' => $managerRoleId,
                'department_id' => $procurementDeptId,
                'password' => bcrypt('123456789'),
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
        // Link Inventory Manager role in Pivot table
        if ($managerRole) {
            $managerUser->roles()->sync([$managerRoleId]);
        }
    }
}
