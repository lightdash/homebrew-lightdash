class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.4/lightdash-cli-3.371.4-macos-arm64.tar.gz"
      sha256 "ffc84f139098170fa520df5bf787afa0206f7bba5c1e154245452ce81ee9413e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.4/lightdash-cli-3.371.4-macos-x64.tar.gz"
      sha256 "61f90e86a17766e24735361fece00fe4703a548b6c5ce6a15bb7c3fea12dff83"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.4/lightdash-cli-3.371.4-linux-x64.tar.gz"
    sha256 "9e927008b494e43bcf5edbe804b9b8b8ff958c4355a5881102f0533744489d13"

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
