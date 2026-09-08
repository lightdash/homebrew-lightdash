class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.158.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.158.0/lightdash-cli-2.158.0-macos-arm64.tar.gz"
      sha256 "a10e9b2a421aa39f01525bff6f1d3230d192b65ae129835a86ff64d33d175dfc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.158.0/lightdash-cli-2.158.0-macos-x64.tar.gz"
      sha256 "7c0ac3ad7b82bf68860d53e44a71db9107f22a834fbe23a3fc342d4d09f32bb8"
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
