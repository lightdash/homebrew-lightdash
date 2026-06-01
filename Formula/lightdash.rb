class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3069.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3069.1/lightdash-cli-0.3069.1-macos-arm64.tar.gz"
      sha256 "0565cc5489def1aa1d9d6fb467e15f1279eafebfcd4278b4c3f8a8347ba80fbd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3069.1/lightdash-cli-0.3069.1-macos-x64.tar.gz"
      sha256 "27263982582d66ea666bdf1821c69ab092a28c19167efc55657e2c1c86f55d92"
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
