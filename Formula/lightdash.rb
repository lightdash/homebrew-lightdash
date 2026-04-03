class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.5/lightdash-cli-0.2720.5-macos-arm64.tar.gz"
      sha256 "ac14e59180b0a53421193ba395d137b099cda4c18fe720e4ec3f40c7bac76d6f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.5/lightdash-cli-0.2720.5-macos-x64.tar.gz"
      sha256 "1f956bffd945246fbd3e77221fbb745f798dbd4c68ac75d5fa17f39d78c61818"
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
