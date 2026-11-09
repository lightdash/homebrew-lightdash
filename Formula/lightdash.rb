class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.182.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.182.1/lightdash-cli-3.182.1-macos-arm64.tar.gz"
      sha256 "0a93b1e446e96e65c5c5a0d09eb36df98cfe1fd3cec4b4d830a490e94069a2c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.182.1/lightdash-cli-3.182.1-macos-x64.tar.gz"
      sha256 "62f2681022d7b48dcf1f06dcbd838223083bd437cec3933d1bb1cde7d78c7ca7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.182.1/lightdash-cli-3.182.1-linux-x64.tar.gz"
    sha256 "9cb5b37ba4b75948337bfc94e9cb03cc6b8509edbdb53fdcf459680f01cda0bb"

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
