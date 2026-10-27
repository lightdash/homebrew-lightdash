class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.6/lightdash-cli-3.68.6-macos-arm64.tar.gz"
      sha256 "235d3c5c53ca64a443bd331b751329dd3df2cfa1099fc99c191c7b77a1bf5237"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.6/lightdash-cli-3.68.6-macos-x64.tar.gz"
      sha256 "97aeb50f92f27f352c5754e474e2cedecaf30577433a3911614e4ccda63d3ae2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.6/lightdash-cli-3.68.6-linux-x64.tar.gz"
    sha256 "37c7aeef122d96c86688b0c40e60d67e5768bb7bf5242a1153a8d4ed37ee060a"

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
