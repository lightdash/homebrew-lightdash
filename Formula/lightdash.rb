class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.306.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.0/lightdash-cli-3.306.0-macos-arm64.tar.gz"
      sha256 "f1711af67e3c66655d87f3c20158bb35fb9b6e1199ef10e761f3d87cf8da6977"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.306.0/lightdash-cli-3.306.0-macos-x64.tar.gz"
      sha256 "3c448c66317c7e4407290d2b15864af2b08c3dbaf75785fe992aef5f808d30d5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.306.0/lightdash-cli-3.306.0-linux-x64.tar.gz"
    sha256 "31f098eda5b2fbc97531d586454e43e6117c833fe5b8dd18c1b17bff65b4b024"

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
