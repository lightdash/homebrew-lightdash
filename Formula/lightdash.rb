class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.193.0/lightdash-cli-3.193.0-macos-arm64.tar.gz"
      sha256 "b2cc996deda55272e918a588dbc56b7d7f0d502db5d29714937de1305e0dac22"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.193.0/lightdash-cli-3.193.0-macos-x64.tar.gz"
      sha256 "faa993d1406fcfda7ade9eb14e9f9b28b4ce87cee352e7d8c995c5c054603d3f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.193.0/lightdash-cli-3.193.0-linux-x64.tar.gz"
    sha256 "7abb44f51f92dff2c35196c50fbb644f489003f4577d579361c82c6daa9a5ce1"

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
