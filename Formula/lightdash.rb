class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2241.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2241.0/lightdash-cli-0.2241.0-macos-arm64.tar.gz"
      sha256 "c0c616db2d8965e05acd85ec20202687c7be78e7d8b5d9bf5c405a46f5de3b20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2241.0/lightdash-cli-0.2241.0-macos-x64.tar.gz"
      sha256 "b8e8dd5b5f3604926892ed0ef79d1e5b8e24b34877022f8ccee09fcce5ad4bdf"
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
