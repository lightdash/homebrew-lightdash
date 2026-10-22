class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.0/lightdash-cli-3.25.0-macos-arm64.tar.gz"
      sha256 "832ae14cfd89c527758361fb96727963da7185096d27897393f510dba30dbc90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.0/lightdash-cli-3.25.0-macos-x64.tar.gz"
      sha256 "c92025f015535679c964d7c62d2725aa6397b323060af38e91d79e7a770d22f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.25.0/lightdash-cli-3.25.0-linux-x64.tar.gz"
    sha256 "7a960448f2841534184b0daed46ecfd60bda428775237106062a22f230b9365f"

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
