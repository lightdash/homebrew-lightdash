class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.401.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.401.0/lightdash-cli-3.401.0-macos-arm64.tar.gz"
      sha256 "a89b37f4f9a88287ed2b363b7ae05c5b0684bff3649804bdaf65ce6931fe60cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.401.0/lightdash-cli-3.401.0-macos-x64.tar.gz"
      sha256 "22ff2ffa6e23aca0fab298aa8856190460d8e3d42f8c6b1cf2b7c7924c5fb3e3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.401.0/lightdash-cli-3.401.0-linux-x64.tar.gz"
    sha256 "9b3915b00208c6e7d3dd8e90ca69a7b7f7f9a27e90af50db4f5bd590fb016601"

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
