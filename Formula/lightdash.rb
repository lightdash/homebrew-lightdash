class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.14/lightdash-cli-0.2270.14-macos-arm64.tar.gz"
      sha256 "8f0db8e3afb70faea727a62ceb6f29ef1106d89678060ae1de78367ea44b6039"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.14/lightdash-cli-0.2270.14-macos-x64.tar.gz"
      sha256 "aca0d7282ca084ae33c79ff73d6803692c7f251465ff2d2674b76d9765b8d94b"
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
