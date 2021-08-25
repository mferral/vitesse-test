<template>
  <main>
    <router-link to="/admin">
      Home
    </router-link> |
    <router-link to="/admin/clients">
      Clients
    </router-link>
    <router-view />
    <Footer />
    <div>
      [Admin Layout]
    </div>
  </main>
</template>
