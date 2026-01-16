class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2347.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2347.0/lightdash-cli-0.2347.0-macos-arm64.tar.gz"
      sha256 "01f4636fb02f4d48fb3a203e2166c9f6b0335708ff72c9e8d85b5d44440b9cdc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2347.0/lightdash-cli-0.2347.0-macos-x64.tar.gz"
      sha256 "a69bff4459a6afa5a3e069538aca9805e1f283050bfd914103c7e2fc3e4ed395"
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
