class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.33.0/lightdash-cli-3.33.0-macos-arm64.tar.gz"
      sha256 "f2d68b112e4bac80c0d21ab41e97a0f82578044218a51e5d4d94569f66caab9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.33.0/lightdash-cli-3.33.0-macos-x64.tar.gz"
      sha256 "22ce64c4814ce94b418ee3448abfc51979ef020ce78a70a0cb5f9ef8f550f360"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.33.0/lightdash-cli-3.33.0-linux-x64.tar.gz"
    sha256 "a67024b8e51aa161afcc47606444c219cf834c60c49ce6ad571d0613b89977c9"

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
