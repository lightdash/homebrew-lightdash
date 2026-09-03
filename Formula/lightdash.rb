class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.102.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.102.0/lightdash-cli-2.102.0-macos-arm64.tar.gz"
      sha256 "3ef710921be28788d8c8a923f244c2cdfd45dd229e387bc8cb43ea828b3a1cbf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.102.0/lightdash-cli-2.102.0-macos-x64.tar.gz"
      sha256 "8732fdc668d226efcb33ed8c31f439b8fe8ee800584c146fd2d56d8f273a9596"
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
