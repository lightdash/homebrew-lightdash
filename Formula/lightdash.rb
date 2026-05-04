class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2862.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2862.0/lightdash-cli-0.2862.0-macos-arm64.tar.gz"
      sha256 "b1edb10e8668c7f84a9c50ec4bba88f5c4eb5a7e4f42e3ba3bd634619bab0d49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2862.0/lightdash-cli-0.2862.0-macos-x64.tar.gz"
      sha256 "938f95257b15014286d3af601a25bb14fc73d10c50a9283416ccad9c4930826f"
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
