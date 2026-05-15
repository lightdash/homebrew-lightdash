class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2949.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2949.1/lightdash-cli-0.2949.1-macos-arm64.tar.gz"
      sha256 "b38890e202ba560515c3e3e523651be67c10c42e1f273e749ca280e166999b59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2949.1/lightdash-cli-0.2949.1-macos-x64.tar.gz"
      sha256 "67cb973f0c9abef8b499b72288ff5e56648fac879899ac30a074fa7772ffa990"
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
