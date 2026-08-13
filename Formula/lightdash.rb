class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.153.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.153.0/lightdash-cli-1.153.0-macos-arm64.tar.gz"
      sha256 "5169492f35f4940e4d4f052983bc767105e7fd2e72ddc87800636f29c3780a4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.153.0/lightdash-cli-1.153.0-macos-x64.tar.gz"
      sha256 "d6aab82f0a51960b88ec719243f47f755485c221b9ca5c5075931525e8ed143d"
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
