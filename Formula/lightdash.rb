class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.0/lightdash-cli-2.631.0-macos-arm64.tar.gz"
      sha256 "6efedfee458bdf21305d386c50f65a52334b4f74c1e0d8864f4a67ec314689c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.0/lightdash-cli-2.631.0-macos-x64.tar.gz"
      sha256 "fa3a11112cae87618aba2fbaa1ed51f57540cfa9f6e26573c52b16c99876b4c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.0/lightdash-cli-2.631.0-linux-x64.tar.gz"
    sha256 "48536fcef72723ab904156490bf72743b99a2b0537a1a4dc08e0f80b294004c6"

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
