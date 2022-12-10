-- Autor: Tadeu Ascoli
-- Country: Brazil
-- e-mail: tascoli@gmail.com

local status_ok, comment = pcall(require, "Comment")
    if not status_ok then
    return
    end

comment.setup()

-- TODO: Setup config
