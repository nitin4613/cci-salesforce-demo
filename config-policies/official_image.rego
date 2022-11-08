package org
import future.keywords.in
# UUIDs for project to apply rule to
# in_scope_projects := {"edd67370-6c0c-4f73-a3e4-604ceac759e8"}

policy_name["use_official_docker_image"]

use_official_docker_image[image] = reason {
  some image in docker_images   # docker_images are parsed below
  not startswith(image, "circleci")
  reason := sprintf("%s is not an approved Docker image", [image])
}

# helper to parse docker images from the config
docker_images := {image | walk(input, [path, value])  
# walk the entire config tree
                          path[_] == "docker"         
# find any settings that match 'docker'
                          image := value[_].image}    
# grab the images from that section

soft_fail["use_official_docker_image"]

enable_rule["use_official_docker_image"] {
  # in_scope_projects[data.meta.project_id]
}