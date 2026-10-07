class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.458.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.0/lightdash-cli-2.458.0-macos-arm64.tar.gz"
      sha256 "be31808f415e48642fa08cd279d690a5698da336179ef59a7ee613b4481088a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.0/lightdash-cli-2.458.0-macos-x64.tar.gz"
      sha256 "e5fc311f928850b49ecfd3857e63292148609a866186b420c724b58b24a6486f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.458.0/lightdash-cli-2.458.0-linux-x64.tar.gz"
    sha256 "9eb9f6a8c3d9b81a5e1431e9535a90beeb7eca675c5f0195e7426699cd4bf54e"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
