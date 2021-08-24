<script setup lang="ts">
import { ElMessage } from 'element-plus'

const name = ref('')

const router = useRouter()
const go = () => {
  if (name.value)
    router.push(`/hi/${encodeURIComponent(name.value)}`)
}

const open = () => {
  ElMessage('this is a message.')
}
</script>

<template>
  <div>
    <mi-componente />
    <p class="text-4xl">
      <carbon-campsite class="inline-block" />
    </p>
    <p>
      <a rel="noreferrer" href="https://github.com/antfu/vitesse-lite" target="_blank">
        Vitesse Lite
      </a>
    </p>
    <p>
      <em class="text-sm opacity-75">Opinionated Vite Starter Template</em>
    </p>

    <div class="py-4" />

    <input
      id="input"
      v-model="name"
      placeholder="What's your name?"
      type="text"
      autocomplete="false"
      p="x-4 y-2"
      w="250px"
      text="center"
      bg="transparent"
      border="~ rounded gray-200 dark:gray-700"
      outline="none active:none"
      @keydown.enter="go"
    >

    <div>
      <el-button
        type="primary"
        :disabled="!name"
        @click="go"
      >
        Go
      </el-button>
      <el-button :plain="true" @click="open">
        Show message
      </el-button>
      <el-button type="primary" icon="el-icon-edit"></el-button>
      <el-button type="primary" icon="el-icon-share"></el-button>
      <el-button type="primary" icon="el-icon-delete"></el-button>
      <el-button type="primary" icon="el-icon-search">
        Search
      </el-button>
      <el-button
        type="primary"
      >
        Upload<i class="el-icon-upload el-icon-right"></i>
      </el-button>
    </div>
  </div>
</template>
