class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.55.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.55.1/lightdash-cli-2.55.1-macos-arm64.tar.gz"
      sha256 "30927e795e302498669af3cb2d4c5c5f4471ce928a2c57dff2324bf67b8d96ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.55.1/lightdash-cli-2.55.1-macos-x64.tar.gz"
      sha256 "8a6d95e6433771b38556541cf90ef887104e53508ce1fe0463901c4bd5efb2d4"
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
