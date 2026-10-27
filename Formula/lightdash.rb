class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.0/lightdash-cli-3.68.0-macos-arm64.tar.gz"
      sha256 "408351a68a02f9de747ff036972aed60b7006c860617f2b1078146ccda02f814"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.0/lightdash-cli-3.68.0-macos-x64.tar.gz"
      sha256 "920ab15fdceb01c0e1617ba935be133c3a871aadf8543ac529dabe8f0c4e79f7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.0/lightdash-cli-3.68.0-linux-x64.tar.gz"
    sha256 "6789f3120e311ca1c1cedd5da348ef02a9b40114558558e886ee2b69f616b4de"

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
