class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2696.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2696.1/lightdash-cli-0.2696.1-macos-arm64.tar.gz"
      sha256 "972a0c59c0a3f998a6ac10880c4c40b2f84cea0debc5d2138acf7bef8fe65191"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2696.1/lightdash-cli-0.2696.1-macos-x64.tar.gz"
      sha256 "5d1a67bca2043a4e62184f3c99a8c36f8321b48a9c34a24b9f5cfd1a3a7950df"
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
