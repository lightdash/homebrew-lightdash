class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.471.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.471.0/lightdash-cli-2.471.0-macos-arm64.tar.gz"
      sha256 "426becbd05a7043aad98abac1448293799f36d2324ca7e7f7fd82af9bacb531e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.471.0/lightdash-cli-2.471.0-macos-x64.tar.gz"
      sha256 "f47d6d908211b647b543cec1979e1ef478c25804cee14a125aae0900cda26716"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.471.0/lightdash-cli-2.471.0-linux-x64.tar.gz"
    sha256 "644668bc6ead71080e1aed4ed8f1c4a6d5883435555ec3b69e9231c96f8f8a30"

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
