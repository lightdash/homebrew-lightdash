class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2698.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2698.0/lightdash-cli-0.2698.0-macos-arm64.tar.gz"
      sha256 "d221fd3ca5ead8f965cd3a819b66391d2ebb1764886871395eb2675586e43dcb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2698.0/lightdash-cli-0.2698.0-macos-x64.tar.gz"
      sha256 "999f9d92aaf05bbf41964102380e51330de75df980d175ed7ac38f4110779f34"
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
