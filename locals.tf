locals {
  tags = merge(
    var.additional_tags,
    var.required_tags
  )

  vpc_name = join(
    "-",
    [
      local.tags.region,
      local.tags.application,
      local.tags.environment,
      "vpc"
    ]
  )
}
