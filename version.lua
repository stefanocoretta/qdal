function Meta(meta)
  local version = quarto.metadata.get("version")

  if version then
    meta.subtitle = pandoc.MetaInlines({
      pandoc.Str("v" .. pandoc.utils.stringify(version))
    })
  end

  return meta
end
