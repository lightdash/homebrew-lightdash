class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.4/lightdash-cli-3.68.4-macos-arm64.tar.gz"
      sha256 "f9d08cc122ee6c7cdc2a5bf16ff8bb2393e2cc12a54186a9cee691b70c685174"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.4/lightdash-cli-3.68.4-macos-x64.tar.gz"
      sha256 "5d6c18a0f93ee6c931c81c920b41e1ad256f12178bfbcfab7fb0abae286872e8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.4/lightdash-cli-3.68.4-linux-x64.tar.gz"
    sha256 "cda6d8d7b3a9f9552ae846e17aa664d90603aed6adc40d0f61f6ee43da209653"

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
