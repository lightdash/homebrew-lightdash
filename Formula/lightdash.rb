class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3085.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3085.0/lightdash-cli-0.3085.0-macos-arm64.tar.gz"
      sha256 "17a74b23359abd21e898b108b8e12535e9b44591198a2d2c7a57c1e82d1d9360"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3085.0/lightdash-cli-0.3085.0-macos-x64.tar.gz"
      sha256 "d336d86d50e0915ffad9ccfb48486295e10b3510879777a8e726c33326c340ee"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
