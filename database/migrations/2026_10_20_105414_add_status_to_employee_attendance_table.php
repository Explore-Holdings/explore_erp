<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('employee_attendance', function (Blueprint $table) {
            $table->string('status')->nullable()->after('late_reason');
            $table->string('updated_by')->nullable()->after('status');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('employee_attendance', function (Blueprint $table) {
            $table->dropColumn(['status', 'updated_by']);
        });
    }
};
