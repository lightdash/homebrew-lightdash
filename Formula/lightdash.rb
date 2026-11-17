class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.289.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.2/lightdash-cli-3.289.2-macos-arm64.tar.gz"
      sha256 "b4bee65c50507ee6fe67e0c26fcd22f12e5114b74c13b27f703389b102a73e5a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.2/lightdash-cli-3.289.2-macos-x64.tar.gz"
      sha256 "4de5a996d3a4397e25aa3bcc1f2650c7b5ffc350fb6271144d55fb2c93939d5d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.289.2/lightdash-cli-3.289.2-linux-x64.tar.gz"
    sha256 "99695e35cf56b789277d6566c58890befde074c17829e4312823569a48697750"

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
