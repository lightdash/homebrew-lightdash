class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2900.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2900.0/lightdash-cli-0.2900.0-macos-arm64.tar.gz"
      sha256 "30d5ea14bce99a6050705ea262c8c7175182a9e538db87a814006f65a37e1763"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2900.0/lightdash-cli-0.2900.0-macos-x64.tar.gz"
      sha256 "86df9bde6c09c2fc0cdc42cf04114307fe9bc356f2f8ef1d66e121510c17a5c3"
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
