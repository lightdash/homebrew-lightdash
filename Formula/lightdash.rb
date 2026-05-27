class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3027.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3027.0/lightdash-cli-0.3027.0-macos-arm64.tar.gz"
      sha256 "43d43473ee79ec6e4bb7d22674be340c1d392e27bfe9c14a227a7c1240a9976a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3027.0/lightdash-cli-0.3027.0-macos-x64.tar.gz"
      sha256 "d1a2318a4056d82488a3d237d02bfd569539d26bfc7adfdfb7510ab91e69b861"
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
