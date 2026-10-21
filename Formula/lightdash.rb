class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.1/lightdash-cli-3.12.1-macos-arm64.tar.gz"
      sha256 "d3fe1c20a20322e909d0f69aca0552abf216bab58e6ebfb24eb281951bceec25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.1/lightdash-cli-3.12.1-macos-x64.tar.gz"
      sha256 "2a3f739044916150d625d89d7b7848b73013e1acf6af31ae5ce3a6672ab5d975"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.12.1/lightdash-cli-3.12.1-linux-x64.tar.gz"
    sha256 "8521a19733ac1bb4c8710f424e988f4a065ed82797166f45d38d710c27109a1c"

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
