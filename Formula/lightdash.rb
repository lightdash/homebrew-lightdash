class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.206.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.0/lightdash-cli-2.206.0-macos-arm64.tar.gz"
      sha256 "cc2330bb9e9617ed3918213ebd5a1c3e9e5cb67c85b273cc184163f3acf74c3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.0/lightdash-cli-2.206.0-macos-x64.tar.gz"
      sha256 "a0072fa76219484dfc786d1edaa2f18348030249b88b7d6b3de06163b1ba2528"
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
