class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3259.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.2/lightdash-cli-0.3259.2-macos-arm64.tar.gz"
      sha256 "6d6efbc4924357b42f7e336c67f1f36c43e1bf40979f0ebb355dc86ea3da16b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.2/lightdash-cli-0.3259.2-macos-x64.tar.gz"
      sha256 "d0d6e3eef8786276e9511915ee8c3f697be46b289b2ac06fee5c5718073ff6c8"
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
