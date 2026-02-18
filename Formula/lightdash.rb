class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2482.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.0/lightdash-cli-0.2482.0-macos-arm64.tar.gz"
      sha256 "8c0dd12ab7f49f7e6ebfc39cf5324fb50b361fbb7bbd5f30c35c399d88d17889"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2482.0/lightdash-cli-0.2482.0-macos-x64.tar.gz"
      sha256 "e01fb36eaf96cbfa2e984586cbfc502e6db26a0e6b759f878ea991b84cc4b752"
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
