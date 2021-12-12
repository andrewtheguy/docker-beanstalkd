group "default" {
    targets = ["build"]
}


group "image-all" {
    targets = ["build_multi"]
}


target "build" {
    tags = ["andrewchen5678/docker-beanstalkd:1.10"]
}




target "build_multi" {
    inherits = ["build"]
    platforms = ["linux/amd64", "linux/arm64"]
}

