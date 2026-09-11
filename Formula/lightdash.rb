class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.197.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.2/lightdash-cli-2.197.2-macos-arm64.tar.gz"
      sha256 "86d76ab0fe54c5c8ae784feee216517bf101a36a67a24dd097908d9aeb7cece4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.2/lightdash-cli-2.197.2-macos-x64.tar.gz"
      sha256 "0b6ee0fb6992f5c5800a6dacde138ab0b333601a596fc47fc109c04135b25272"
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
