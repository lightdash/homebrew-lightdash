class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.443.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.443.0/lightdash-cli-3.443.0-macos-arm64.tar.gz"
      sha256 "aab78cad5c0dc722ca11a111d57ac88825570f0dea4bcd29ee0f6923fe25d87b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.443.0/lightdash-cli-3.443.0-macos-x64.tar.gz"
      sha256 "f3c3a8e36d87ddb4e8524405a7460a75d26e0bfa7564cd2530891a4ae1a85ccc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.443.0/lightdash-cli-3.443.0-linux-x64.tar.gz"
    sha256 "e815b2bc8c59ed13f864173e3219b20f7c4cdd13ec4012aa3057b362f8e7de3c"

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
