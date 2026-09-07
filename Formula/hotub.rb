class Hotub < Formula
  desc "Fire + water screensavers for your terminal"
  homepage "https://github.com/askmaddyy/hotub"
  url "https://github.com/askmaddyy/hotub.git",
      tag:      "v0.1.0",
      revision: "3d8329f9816659d5e6930bd93c958c17d54d0f9a"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FIRE", shell_output("#{bin}/hotub smoke")
  end
end
