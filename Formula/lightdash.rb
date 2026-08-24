class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.245.0/lightdash-cli-1.245.0-macos-arm64.tar.gz"
      sha256 "9716af6e92612317513c853064cf6b98d31e195d322045d10044b8ca97a1af81"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.245.0/lightdash-cli-1.245.0-macos-x64.tar.gz"
      sha256 "9d7bc05dd86e12e8866e06b88623fc4de1b1efc5f985b2f423a95aad2e957e4a"
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
