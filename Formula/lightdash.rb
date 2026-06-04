class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3089.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.0/lightdash-cli-0.3089.0-macos-arm64.tar.gz"
      sha256 "d0a0d42a5f9839d94da3d5c4dec19ca2653fa1dea06b9cd113d2829ac354628a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.0/lightdash-cli-0.3089.0-macos-x64.tar.gz"
      sha256 "ecc7540eff5fc0f7c22cd3e8f8f1cc8fa303d5a72be3a46d6e42883135d108c2"
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
