class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3457.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.2/lightdash-cli-0.3457.2-macos-arm64.tar.gz"
      sha256 "603f2704709850471f6a511e5e2076ed2e63ca4eb2a0820b9477173c214aa986"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.2/lightdash-cli-0.3457.2-macos-x64.tar.gz"
      sha256 "e7706827c446858f46492d715b697c1af572e489852af57776d48d8ee2ea3f09"
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
