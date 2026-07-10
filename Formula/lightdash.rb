class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3362.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3362.0/lightdash-cli-0.3362.0-macos-arm64.tar.gz"
      sha256 "6984c0ba1cc99e8d04ee90b9effa5e1cd669f4ba80e091274ab75aada685b438"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3362.0/lightdash-cli-0.3362.0-macos-x64.tar.gz"
      sha256 "0dfce01f8dbb91423f830ae9da1b7ce2fb7982c974f2d49b12290248cdc3c9aa"
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
