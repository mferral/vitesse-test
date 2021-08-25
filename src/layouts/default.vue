<template>
  <el-container style="height: 100%; border: 1px solid #eee">
    <el-aside style="background-color: rgb(238, 241, 246)" class="sidebar">
      <el-menu :default-openeds="['1', '3']">
        <el-submenu index="1">
          <template #title>
            <i class="el-icon-message"></i>Navigator One
          </template>
          <el-menu-item-group>
            <template #title>
              Group 1
            </template>
            <el-menu-item index="1-1">
              Option 1
            </el-menu-item>
            <el-menu-item index="1-2">
              Option 2
            </el-menu-item>
          </el-menu-item-group>
          <el-menu-item-group title="Group 2">
            <el-menu-item index="1-3">
              Option 3
            </el-menu-item>
          </el-menu-item-group>
          <el-submenu index="1-4">
            <template #title>
              Option4
            </template>
            <el-menu-item index="1-4-1">
              Option 4-1
            </el-menu-item>
          </el-submenu>
        </el-submenu>
      </el-menu>
    </el-aside>

    <el-container>
      <el-header style="text-align: right; font-size: 12px">
        <el-dropdown>
          <i class="el-icon-setting" style="margin-right: 15px"></i>
          <template #dropdown>
            <el-dropdown-menu>
              <el-dropdown-item>View</el-dropdown-item>
              <el-dropdown-item>Add</el-dropdown-item>
              <el-dropdown-item>Delete</el-dropdown-item>
            </el-dropdown-menu>
          </template>
        </el-dropdown>
        <span>Tom</span>
      </el-header>

      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>
<style>
  .el-header {
    background-color: #B3C0D1;
    color: #333;
    line-height: 60px;
  }

  .el-aside {
    color: #333;
  }
  .sidebar {
    position: fixed;
    width: 250px;
    height: 100%;
    z-index: 999;
    overflow-y: auto;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-transition: -webkit-transform .2s;
    transition: -webkit-transform .2s;
    transition: transform .2s;
    transition: transform .2s,-webkit-transform .2s;
    -webkit-box-shadow: 0 0 6px 0 rgb(0 0 0 / 16%);
    box-shadow: 0 0 6px 0 rgb(0 0 0 / 16%);
}
</style>
