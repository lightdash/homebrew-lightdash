class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2931.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2931.1/lightdash-cli-0.2931.1-macos-arm64.tar.gz"
      sha256 "00fa8032392f506fbbf37ccc770cfcc33e50c74a8535ae14b93c2197cf8e465d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2931.1/lightdash-cli-0.2931.1-macos-x64.tar.gz"
      sha256 "45075a606cc54a64adf4c039992fe21d71e5c14a6b6f7381cf3547a437e0a055"
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
