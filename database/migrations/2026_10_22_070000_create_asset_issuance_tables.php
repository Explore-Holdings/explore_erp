<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // Issuable Items catalog
        Schema::create('issuable_items', function (Blueprint $table) {
            $table->id();
            $table->string('name', 150);
            $table->unsignedBigInteger('created_by')->nullable();
            $table->timestamps();

            $table->foreign('created_by')->references('id')->on('users')->onDelete('set null');
        });

        // Asset Issuances — each record of issuing an item to an employee
        Schema::create('asset_issuances', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('employee_id');
            $table->unsignedBigInteger('item_id');
            $table->integer('quantity');
            $table->unsignedBigInteger('issued_by');
            $table->string('issued_department', 150)->nullable();
            $table->dateTime('issued_at');
            $table->text('purpose')->nullable();
            $table->enum('status', ['issued', 'returned', 'lost'])->default('issued');
            $table->dateTime('returned_at')->nullable();
            $table->timestamps();

            $table->foreign('employee_id')->references('employee_id')->on('employees')->onDelete('restrict');
            $table->foreign('item_id')->references('id')->on('issuable_items')->onDelete('restrict');
            $table->foreign('issued_by')->references('id')->on('users')->onDelete('restrict');

            $table->index('employee_id');
            $table->index('item_id');
            $table->index('issued_at');
            $table->index('status');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('asset_issuances');
        Schema::dropIfExists('issuable_items');
    }
};
