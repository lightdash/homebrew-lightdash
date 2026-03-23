class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2650.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2650.0/lightdash-cli-0.2650.0-macos-arm64.tar.gz"
      sha256 "0238bb1c8e006cd68b55641a755fc2da57b9d166ca61309369ea1a3766978b2d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2650.0/lightdash-cli-0.2650.0-macos-x64.tar.gz"
      sha256 "a47537e0783b9859ef03d5719256e0e29d984b9e538c0c6a395af1ad8cae9aaa"
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
