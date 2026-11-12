class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.2/lightdash-cli-3.234.2-macos-arm64.tar.gz"
      sha256 "c37ce829ad35e261d9b53d102fa9884a0d441e130031e7021cd9dd3ba6fda14a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.2/lightdash-cli-3.234.2-macos-x64.tar.gz"
      sha256 "496fdadf97911baae2dd96e154ae4193e97ba5b8c2ea07b442a5b97a3cd6b310"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.2/lightdash-cli-3.234.2-linux-x64.tar.gz"
    sha256 "cad49e47cc6c83d6b337e66aafb28dc2e01083f3483b91ba9216c85b5d1a5337"

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
