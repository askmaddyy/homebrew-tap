class Hotub < Formula
  desc "Fire + water screensavers for your terminal"
  homepage "https://github.com/askmaddyy/hotub"
  url "https://api.github.com/repos/askmaddyy/hotub/tarball/v0.1.0"
  sha256 "fda4810699aff8610b3653d06e71edccb0b4b7ad23a88b7c0182f23f9dcfd5d4"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FIRE", shell_output("#{bin}/hotub smoke")
  end
end
