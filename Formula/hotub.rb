class Hotub < Formula
  desc "Fire + water screensavers for your terminal"
  homepage "https://github.com/askmaddyy/hotub"
  url "https://github.com/askmaddyy/hotub/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "70a21cde333a366e1f11f07824ec23e591d4371d0b010b00639d9718997b9e77"
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "FIRE", shell_output("#{bin}/hotub smoke")
  end
end
