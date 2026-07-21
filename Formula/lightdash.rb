class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3433.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3433.0/lightdash-cli-0.3433.0-macos-arm64.tar.gz"
      sha256 "119ccc33908298b5a2a119c28e6ce9f343b36c91e343c27a7d12c37919a44171"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3433.0/lightdash-cli-0.3433.0-macos-x64.tar.gz"
      sha256 "9b4bcf1bb3eba9a07f0edf2e98c4dd272f8eaf2f30918c865045a60dfaeb5940"
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
