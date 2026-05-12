class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2919.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.3/lightdash-cli-0.2919.3-macos-arm64.tar.gz"
      sha256 "7bbaf5d1211b567bbed627f2f052a0b508524011dcf30e71a8e80273f80b678d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2919.3/lightdash-cli-0.2919.3-macos-x64.tar.gz"
      sha256 "8cc4fdf560585fe4d8648645ec6a04b8f2dd9d15b27e18e973a37a4bf44598e7"
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
