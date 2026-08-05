class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.85.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.85.1/lightdash-cli-1.85.1-macos-arm64.tar.gz"
      sha256 "c07dda9a109bca8c67080f491ae7b0cd5a8fa78e528ef235ef92369d7310083f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.85.1/lightdash-cli-1.85.1-macos-x64.tar.gz"
      sha256 "a00e748bbdeb44f956da37917f799c0a8bd93a34af10c10c670358a8bef9b3e0"
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
